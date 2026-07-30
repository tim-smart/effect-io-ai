Package: `effect`<br />
Module: `Either`<br />

## Either.right

Constructs a new `Either` holding a `Right` value. This usually represents a successful value due to the right bias
of this structure.

**Signature**

```ts
declare const right: <A>(a: A) => Either<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L120)

Since v2.0.0