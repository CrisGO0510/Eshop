import { Component } from '@angular/core';

@Component({
  selector: 'app-stock',
  templateUrl: './stock.component.html',
  styleUrls: ['./stock.component.css']
})
export class StockComponent {

  constructor(){}

  stock = 0;

  addStock(){
    this.stock += 1;
  }

  removeStock(){
    if (0 < this.stock) {
      this.stock -= 1;
    } else { alert('No se puede restar mas') }
  }

}
