Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.CurrentMetadata

Context reference containing metadata for the currently running schedule step.

**Details**

Repeat, retry, stream, and channel scheduling operations provide this service
to effects run between schedule steps. The default value contains undefined
input and output values, zero duration, and zeroed timing fields before any
schedule step has produced metadata.

**Signature**

```ts
declare const CurrentMetadata: Context.Reference<Metadata<unknown, unknown>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L224)

Since v4.0.0