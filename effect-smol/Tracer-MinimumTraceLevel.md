Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.MinimumTraceLevel

Context reference for setting the minimum trace level threshold. Spans and their
descendants below this level will have their sampling decision forced to
false, preventing them from being exported.

**When to use**

Use to set the trace-level threshold that controls whether spans are sampled
by default.

**Details**

The default value is `"All"`. Span creation compares the span level from
`options.level ?? CurrentTraceLevel` against this threshold.

**Gotchas**

Explicit `options.sampled` bypasses threshold computation.

**See**

- `CurrentTraceLevel` for the default span level used when options do not specify one

**Signature**

```ts
declare const MinimumTraceLevel: Context.Reference<LogLevel>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L543)

Since v4.0.0