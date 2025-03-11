## forEach

For each element of the provided iterable, run the effect and collect the
results.

If the `discard` option is set to `true`, the results will be discarded and
the effect will return `void`.

The `concurrency` option can be set to control how many effects are run
concurrently. By default, the effects are run sequentially.

**Signature**

```ts
declare const forEach: { <A, B, E, R>(iterable: Iterable<A>, f: (a: A, index: number) => Micro<B, E, R>, options?: { readonly concurrency?: Concurrency | undefined; readonly discard?: false | undefined; }): Micro<Array<B>, E, R>; <A, B, E, R>(iterable: Iterable<A>, f: (a: A, index: number) => Micro<B, E, R>, options: { readonly concurrency?: Concurrency | undefined; readonly discard: true; }): Micro<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L3869)

Since v3.4.0