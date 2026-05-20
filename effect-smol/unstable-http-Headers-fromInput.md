Package: `effect`<br />
Module: `Headers`<br />

## Headers.fromInput

Creates `Headers` from a record or iterable of header entries.

**Details**

Header names are normalized to lowercase. Array values in record input are joined with `", "`, and `undefined` values are omitted.

**Signature**

```ts
declare const fromInput: (input?: Input) => Headers
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Headers.ts#L194)

Since v4.0.0