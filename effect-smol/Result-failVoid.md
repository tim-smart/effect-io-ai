Package: `effect`<br />
Module: `Result`<br />

## Result.failVoid

A pre-built `Result<void>` holding `undefined` as its failure value.

- Use when you need a `Result` that represents "failed with no meaningful value"
- Equivalent to `Result.fail(undefined)` but avoids an extra allocation

**See**

- `fail`

**Signature**

```ts
declare const failVoid: Result<never, void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L388)

Since v4.0.0