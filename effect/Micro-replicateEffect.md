# replicateEffect

Performs this effect the specified number of times and collects the
results.

To import and use `replicateEffect` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.replicateEffect
```

**Signature**

```ts
export declare const replicateEffect: {
  (
    n: number,
    options?: { readonly concurrency?: Concurrency | undefined; readonly discard?: false | undefined }
  ): <A, E, R>(self: Micro<A, E, R>) => Micro<Array<A>, E, R>
  (
    n: number,
    options: { readonly concurrency?: Concurrency | undefined; readonly discard: true }
  ): <A, E, R>(self: Micro<A, E, R>) => Micro<void, E, R>
  <A, E, R>(
    self: Micro<A, E, R>,
    n: number,
    options?: { readonly concurrency?: Concurrency | undefined; readonly discard?: false | undefined }
  ): Micro<Array<A>, E, R>
  <A, E, R>(
    self: Micro<A, E, R>,
    n: number,
    options: { readonly concurrency?: Concurrency | undefined; readonly discard: true }
  ): Micro<void, E, R>
}
```
