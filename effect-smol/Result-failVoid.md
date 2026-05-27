Package: `effect`<br />
Module: `Result`<br />

## Result.failVoid

A pre-built failed `Result` whose failure value is `undefined`.

**Details**

This is equivalent to `Result.fail(undefined)` with type
`Result<never, void>`, but avoids allocating a new `Failure` wrapper.

**See**

- `fail`

**Signature**

```ts
declare const failVoid: Result<never, void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L413)

Since v4.0.0