import { IncomingMessage } from 'http';
import { parse } from 'url';
import { ParsedRequest } from './types';

export function parseRequest(req: IncomingMessage) {
    console.log(`HTTP ${req.url}`);
    const { query } = parse(req.url || '/', true);
    const {
        url, selector, canvas, ua, viewport = '1024,768', dpr = '1', filetype = 'png', full, css, waitforframe,
    } = (query || {});

    if (!url) {
        throw new Error('Missing url parameter');
    }
    if (!viewport.toString().match(/^\d+,\d+$/)) {
        throw new Error('Malformed viewport parameter');
    }
    if (waitforframe && !waitforframe.toString().match(/^\d+$/)) {
        throw new Error('waitforframe needs to be in milliseconds');
    }

    let _filetype: 'jpeg' | 'png' = 'png';
    if (filetype === 'jpeg') {
        _filetype = 'jpeg';
    }

    const parsedRequest: ParsedRequest = {
        url: url.toString(),
        selector: getArray(selector),
        canvas: !!(canvas || '').toString(),
        ua: ua ? ua.toString() : undefined,
        viewport: {
            width: Number(viewport.toString().split(',')[0]),
            height: Number(viewport.toString().split(',')[1]),
        },
        dpr: Number(dpr.toString()),
        full: !!(full || '').toString(),
        filetype: _filetype,
        css: getArray(css).join(''),
        waitforframe: waitforframe ? Number(waitforframe.toString()) : undefined,
    };

    return parsedRequest;
}

function getArray(stringOrArray: string[] | string | undefined): string[] {
    if (typeof stringOrArray === 'undefined' || stringOrArray === '') {
        return [];
    } if (Array.isArray(stringOrArray)) {
        return stringOrArray;
    }
    return [stringOrArray];
}
