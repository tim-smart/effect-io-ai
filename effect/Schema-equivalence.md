Package: `effect`<br />
Module: `Schema`<br />

## Schema.equivalence

Given a schema `Schema<A, I, R>`, returns an `Equivalence` instance for `A`.

**Signature**

```ts
declare const equivalence: <A, I, R>(schema: Schema<A, I, R>) => Equivalence.Equivalence<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L10591)

Since v3.10.0