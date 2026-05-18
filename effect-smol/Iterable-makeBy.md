Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.makeBy

Creates an iterable by applying a function to consecutive integers.

This is a fundamental constructor that generates iterables by calling a function
with each index starting from 0. If no length is specified, the iterable will
be infinite. This is useful for generating sequences, patterns, or any indexed data.

**Signature**

```ts
declare const makeBy: <A>(f: (i: number) => A, options?: { readonly length?: number; }) => Iterable<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L78)

Since v2.0.0