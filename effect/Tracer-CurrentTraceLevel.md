Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.CurrentTraceLevel

Context reference for controlling the current trace level for dynamic filtering.

**When to use**

Use to set the default trace level for spans in a scope when span options do
not provide `level`.

**Details**

The default value is `"Info"`. Span creation uses `options.level ??
CurrentTraceLevel` before applying `MinimumTraceLevel`.

**See**

- `MinimumTraceLevel` for the threshold that decides whether spans at that level are sampled

**Signature**

```ts
declare const CurrentTraceLevel: Context.Reference<LogLevel>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tracer.ts#L514)

Since v4.0.0