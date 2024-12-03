# filterMap

Effectfully filter the elements of the provided iterable.

Use the `concurrency` option to control how many elements are processed in parallel.

To import and use `filterMap` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.filterMap
```

**Signature**

```ts
export declare const filterMap: <A, B, E, R>(
  iterable: Iterable<A>,
  f: (a: NoInfer<A>) => Micro<Option.Option<B>, E, R>,
  options?: { readonly concurrency?: Concurrency | undefined }
) => Micro<Array<B>, E, R>
```
