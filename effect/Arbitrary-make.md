Package: `effect`<br />
Module: `Arbitrary`<br />

## Arbitrary.make

Returns a fast-check Arbitrary for the `A` type of the provided schema.

**Signature**

```ts
declare const make: <A, I, R>(schema: Schema.Schema<A, I, R>) => FastCheck.Arbitrary<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Arbitrary.ts#L61)

Since v3.10.0