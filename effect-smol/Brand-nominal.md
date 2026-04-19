Package: `effect`<br />
Module: `Brand`<br />

## Brand.nominal

This function returns a `Constructor` that **does not apply any runtime
checks**, it just returns the provided value. It can be used to create
nominal types that allow distinguishing between two values of the same type
but with different meanings.

If you also want to perform some validation, see `make` or
`check` or `refine`.

**Signature**

```ts
declare const nominal: <A extends Brand<any>>() => Constructor<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Brand.ts#L176)

Since v2.0.0