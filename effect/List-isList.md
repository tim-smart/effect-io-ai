## isList

Returns `true` if the specified value is a `List`, `false` otherwise.

**Signature**

```ts
declare const isList: { <A>(u: Iterable<A>): u is List<A>; (u: unknown): u is List<unknown>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L208)

Since v2.0.0