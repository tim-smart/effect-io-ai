Package: `effect`<br />
Module: `References`<br />

## References.CurrentTraceLevel

Reference for the current trace level used for dynamic trace filtering.

**When to use**

Use to set the default trace level for spans created in a scope when span
options do not provide `level`.

**See**

- `MinimumTraceLevel` for configuring the threshold that decides whether spans at a given level are sampled or exported

**Signature**

```ts
declare const CurrentTraceLevel: Context.Reference<LogLevel>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L86)

Since v4.0.0