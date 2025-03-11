## makeLazy

Returns a LazyArbitrary for the `A` type of the provided schema.

**Signature**

```ts
declare const makeLazy: <A, I, R>(schema: Schema.Schema<A, I, R>) => LazyArbitrary<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Arbitrary.ts#L52)

Since v3.10.0