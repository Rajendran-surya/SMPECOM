import { Component, OnInit, HostListener } from '@angular/core';
import { CartService } from '../services/cart.service';
import { ProductService } from '../services/product.service';
import { Product } from '../shared/models/product.model';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss'],
})
export class HomeComponent implements OnInit {
  products: Product[] = [];
  categories = [
    { name: 'Electronics' },
    { name: 'Clothing' },
    { name: 'Mobiles' },
  ];
  loading = false;
  productPageCounter = 1;
  additionalLoading = false;
  searchText = '';

  constructor(
    private productService: ProductService,
    private cartService: CartService
  ) {}

  public screenWidth: any;
  public screenHeight: any;

  @HostListener('window:resize', ['$event'])
  onResize(event) {
    this.screenWidth = window.innerWidth;
    this.screenHeight = window.innerHeight;
  }

  ngOnInit(): void {
    this.screenWidth = window.innerWidth;
    this.screenHeight = window.innerHeight;
    this.loading = true;
    setTimeout(() => {
      this.productService.getAllProducts(9, this.productPageCounter).subscribe(
        (res: any) => {
          console.log(res);
          this.products = res;
          this.loading = false;
        },
        (err) => {
          console.log(err);
          this.loading = false;
        }
      );
    }, 500);
  }

  get filteredProducts(): Product[] {
    if (!this.searchText) {
      return this.products;
    }
    const searchTerm = this.searchText.toLowerCase();
    return this.products.filter(product =>
      product.category.toLowerCase().includes(searchTerm)
    );
  }

  showMoreProducts(): void {
    this.additionalLoading = true;
    this.productPageCounter += 1;
    setTimeout(() => {
      this.productService.getAllProducts(9, this.productPageCounter).subscribe(
        (res: any) => {
          console.log(res);
          this.products = [...this.products, ...res];
          this.additionalLoading = false;
        },
        (err) => {
          console.log(err);
          this.additionalLoading = false;
        }
      );
    }, 500);
  }
}
