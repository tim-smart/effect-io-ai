Package: `effect`<br />
Module: `Telemetry`<br />

## Telemetry.BaseAttributes

Telemetry attributes which are part of the GenAI specification and are
namespaced by `gen_ai`.

**Signature**

```ts
export interface BaseAttributes {
  /**
   * The Generative AI product as identified by the client or server
   * instrumentation.
   */
  readonly system?: (string & {}) | WellKnownSystem | null | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Telemetry.ts#L82)

Since v4.0.0