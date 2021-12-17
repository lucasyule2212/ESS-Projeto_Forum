
import { ModuleWithProviders } from '@angular/compiler/src/core';
import { Component } from '@angular/core';
import { RouterModule, Routes} from '@angular/router';
import { CadastroComponent } from './cadastro/cadastro.component';
import { CriarTopicoComponent } from './criar-topico/criar-topico.component';
import { HomeComponent } from './home/home.component';
import { LoginpageComponent } from './loginpage/loginpage.component';
import { ComputadorComponent } from './topicos/computador/computador.component';
import { SmartphoneComponent } from './topicos/smartphone/smartphone.component';


const App_routes: Routes = [
    { path : 'loginpage', component: LoginpageComponent},
    { path: 'home', component: HomeComponent },
    { path : 'cadastro', component: CadastroComponent},
    { path: 'smartphone', component: SmartphoneComponent},
    { path: 'computador', component: ComputadorComponent}
    
];

export const routing: ModuleWithProviders= RouterModule.forRoot(App_routes);