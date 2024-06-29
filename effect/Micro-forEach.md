# forEach

For each element of the provided iterable, run the effect and collect the results.

If the `discard` option is set to `true`, the results will be discarded and
the effect will return `void`.

The `concurrency` option can be set to control how many effects are run in
parallel. By default, the effects are run sequentially.

To import and use `forEach` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.forEach
```

**Signature**

```ts
export declare const forEach: {
  <A, B, E, R>(
    iterable: Iterable<A>,
    f: (a: A, index: number) => Micro<B, E, R>,
    options?: { readonly concurrency?: Concurrency | undefined; readonly discard?: false | undefined }
  ): Micro<B[], E, R>
  <A, B, E, R>(
    iterable: Iterable<A>,
    f: (a: A, index: number) => Micro<B, E, R>,
    options: { readonly concurrency?: Concurrency | undefined; readonly discard: true }
  ): Micro<void, E, R>
}
```
