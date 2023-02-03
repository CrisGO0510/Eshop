import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { SingUpService } from 'src/app/services/sing-up.service';


@Component({
  selector: 'app-one-product',
  templateUrl: './one-product.component.html',
  styleUrls: ['./one-product.component.css']
})
export class OneProductComponent implements OnInit {

  constructor(
    // Inyectamos ActivatedRoute para poder tomar el parametro de la url y asignarlo a una variable (id)
    private route: ActivatedRoute,
    // Inyectamos SingUpService para usar los metodos http (getOneProduct) y así traer los datos de
    // los productos desde la base de datos
    private services: SingUpService
  ) { }

  // Variable que será usada para identificar que producto traer
  id: any = '';
  // Variable que alojará toda la información de un producto
  product: any = {}
  // Array que contendrá todas las imagenes de los productos en forma de objetos
  images: any = {}
  ngOnInit(): void {
    // Función para que la variable id tenga el parametro de la url
    this.id = this.route.snapshot.paramMap.get('id');
    // Función que llamará el producto con la id
    this.getOneProduct(this.id);
    this.getOneImage(this.id);
  }

  // Funcion par traer el producto con la id y retornarlo en la varible product
  getOneProduct(gId: string) {
    this.services.getOneProduct(gId).subscribe({
      next: (v) => this.product = v,
      error: (e) => console.log(e)
    })
  }

  // Funcion par traer las imagenes de los productos y retornarlo en la varible images en forma de arrays de objetos
  getOneImage(gId: string) {
    this.services.getOneImage(gId).subscribe({
      next: (v) => this.images = v,
      error: (e) => console.log(e)
    })
  }

  /* ---------------------------------------------------- STOCK ---------------------------------------------------- */

  // Función para añadir stock

  addStock() {
    if (this.product.stock < 50) {
      this.product.stock += 1;
    } else { alert('No se puede sumar mas del stock maximo') }
  }

  // Función para remover stock

  removeStock() {
    if (0 < this.product.stock) {
      this.product.stock -= 1;
    } else { alert('No se puede restar mas') }
  }

  // Función para cambiar el minimo stock

  addMinStock() {
    this.product.stockMin += 1;
  }

  // Función para cambiar el minimo stock
  
  removeMinStock() {
    if (0 < this.product.stockMin) {
      this.product.stockMin -= 1;
    } else { alert('No se puede restar mas') }
  }

  // Función para cambiar el maximo stock

  addMaxStock() {
    this.product.stockMax += 1;
  }

  // Función para cambiar el maximo stock

  removeMaxStock() {
    if (0 < this.product.stockMax) {
      this.product.stockMax -= 1;
    } else { alert('No se puede restar mas') }
  }

  /* -------------------------------------------------- FIN STOCK -------------------------------------------------- */


}
