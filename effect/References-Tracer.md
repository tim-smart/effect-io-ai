Package: `effect`<br />
Module: `References`<br />

## References.Tracer

Context reference for the active tracer service used to create spans.

**When to use**

Use to access or override the active tracer service through the references
module when working directly with Effect runtime references.

**Signature**

```ts
declare const Tracer: Context.Reference<Tracer>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/References.ts#L124)

Since v4.0.0