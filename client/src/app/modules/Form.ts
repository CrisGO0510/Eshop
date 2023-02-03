export interface Register {
    username: string;
    password: string;
    phone: string;
    email: string;
    root?: Boolean;
    address: string;
}

export interface Login {
    username: string;
    password: string;
}

export interface product {
    name: string;
    username: string;
    email: string;
    phone: string;
    website: string;
  }