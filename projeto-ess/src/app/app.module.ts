import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { routing } from './app.rotas';
import { HomeComponent } from './home/home.component';
import { LoginpageComponent } from './loginpage/loginpage.component';
import { CadastroComponent } from './cadastro/cadastro.component';
import { AutenticacaoService } from './serveces/autenticacao.service';
import { FormsModule,ReactiveFormsModule } from '@angular/forms';

import { CriarTopicoComponent } from './criar-topico/criar-topico.component';
import { SmartphoneComponent } from './topicos/smartphone/smartphone.component';
import { ComputadorComponent } from './topicos/computador/computador.component';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    LoginpageComponent,
    CadastroComponent,
    CriarTopicoComponent,
    SmartphoneComponent,
    ComputadorComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    routing,
    FormsModule,
    ReactiveFormsModule,
  ],
  providers: [AutenticacaoService],
  bootstrap: [AppComponent],
})
export class AppModule { }
