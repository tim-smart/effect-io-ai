# filter

Effectfully filter the elements of the provided iterable.

Use the `concurrency` option to control how many elements are processed in parallel.

To import and use `filter` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.filter
```

**Signature**

```ts
export declare const filter: <A, E, R>(
  iterable: Iterable<A>,
  f: (a: NoInfer<A>) => Micro<boolean, E, R>,
  options?: { readonly concurrency?: Concurrency | undefined; readonly negate?: boolean | undefined }
) => Micro<Array<A>, E, R>
```
