Package: `effect`<br />
Module: `Cause`<br />

## Cause.reasonAnnotations

Reads the annotations from a single `Reason` as a `ServiceMap`.

Use this when you need tracing metadata (e.g. `StackTrace`) from
a specific reason rather than the whole cause.

**See**

- `annotations` — merged annotations from all reasons in a cause
- `annotate` — attach annotations

**Signature**

```ts
declare const reasonAnnotations: <E>(self: Reason<E>) => ServiceMap.ServiceMap<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1595)

Since v4.0.0