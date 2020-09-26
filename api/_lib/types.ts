import { Viewport } from 'puppeteer';

export interface ParsedRequest {
    url: string;
    selector: string[];
    canvas: boolean;
    ua: string | undefined;
    viewport: Viewport;
    dpr: number;
    full: boolean;
    filetype: 'jpeg' | 'png';
    css: string | undefined;
    waitforframe: number | undefined;
}
