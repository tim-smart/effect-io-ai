## all

Collects all of the specified exit values into a `Some<Exit<List<A>, E>>`. If
the provided iterable contains no elements, `None` will be returned.

**Signature**

```ts
declare const all: <A, E>(exits: Iterable<Exit<A, E>>, options?: { readonly parallel?: boolean | undefined; } | undefined) => Option.Option<Exit<Array<A>, E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L149)

Since v2.0.0