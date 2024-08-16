import { ApplicationConfig } from '@angular/core';
import { provideRouter } from '@angular/router';

import { HashLocationStrategy, LocationStrategy } from '@angular/common';
import {
  provideHttpClient,
  withInterceptorsFromDi,
} from '@angular/common/http';
import { provideNoopAnimations } from '@angular/platform-browser/animations';
import { routes } from './app.routes';

export const appConfig: ApplicationConfig = {
  providers: [
    provideRouter(routes),
    provideHttpClient(),
    provideHttpClient(withInterceptorsFromDi()),
    provideNoopAnimations(),
    { provide: LocationStrategy, useClass: HashLocationStrategy },
  ],
};
