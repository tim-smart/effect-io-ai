# errors

Takes a variable number of `BrandErrors` and returns a single `BrandErrors` that contains all refinement errors.

To import and use `errors` from the "Brand" module:

```ts
import * as Brand from '@effect/data/Brand'

// Can be accessed like this
Brand.errors
```

**Signature**

```ts
export declare const errors: (...errors: Array<Brand.BrandErrors>) => Brand.BrandErrors
```
