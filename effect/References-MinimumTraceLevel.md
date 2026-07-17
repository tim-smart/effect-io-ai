Package: `effect`<br />
Module: `References`<br />

## References.MinimumTraceLevel

Context reference for the minimum trace level threshold for span sampling.

**When to use**

Use to set the trace-level threshold that decides whether newly created
spans are sampled and exported.

**See**

- `CurrentTraceLevel` for setting the level assigned to spans before this threshold is applied

**Signature**

```ts
declare const MinimumTraceLevel: Context.Reference<LogLevel>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/References.ts#L88)

Since v4.0.0