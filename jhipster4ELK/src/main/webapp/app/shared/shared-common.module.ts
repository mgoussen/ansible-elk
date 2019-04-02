import { NgModule } from '@angular/core';

import { Jhipster4ElkSharedLibsModule, JhiAlertComponent, JhiAlertErrorComponent } from './';

@NgModule({
    imports: [Jhipster4ElkSharedLibsModule],
    declarations: [JhiAlertComponent, JhiAlertErrorComponent],
    exports: [Jhipster4ElkSharedLibsModule, JhiAlertComponent, JhiAlertErrorComponent]
})
export class Jhipster4ElkSharedCommonModule {}
