Package: `effect`<br />
Module: `Micro`<br />

## Micro.filterMap

Effectfully filter the elements of the provided iterable.

Use the `concurrency` option to control how many elements are processed
concurrently.

**Signature**

```ts
declare const filterMap: <A, B, E, R>(iterable: Iterable<A>, f: (a: NoInfer<A>) => Micro<Option.Option<B>, E, R>, options?: { readonly concurrency?: Concurrency | undefined; }) => Micro<Array<B>, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L4002)

Since v3.4.0