Package: `effect`<br />
Module: `Argument`<br />

## Argument.Argument

Represents a positional command-line argument.

Note: `boolean` is intentionally omitted from Argument constructors.
Positional boolean arguments are ambiguous in CLI design since there's
no flag name to negate (e.g., `--no-verbose`). Use Flag.boolean instead,
or use Argument.choice with explicit "true"/"false" strings if needed.

**Signature**

```ts
export interface Argument<A> extends Param.Param<typeof Param.argumentKind, A> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L30)

Since v4.0.0