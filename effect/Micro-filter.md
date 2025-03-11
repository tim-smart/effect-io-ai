## filter

Effectfully filter the elements of the provided iterable.

Use the `concurrency` option to control how many elements are processed
concurrently.

**Signature**

```ts
declare const filter: <A, E, R>(iterable: Iterable<A>, f: (a: NoInfer<A>) => Micro<boolean, E, R>, options?: { readonly concurrency?: Concurrency | undefined; readonly negate?: boolean | undefined; }) => Micro<Array<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L3982)

Since v3.4.0