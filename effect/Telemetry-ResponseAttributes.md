Package: `@effect/ai`<br />
Module: `Telemetry`<br />

## Telemetry.ResponseAttributes

Telemetry attributes which are part of the GenAI specification and are
namespaced by `gen_ai.response`.

**Signature**

```ts
export interface ResponseAttributes {
  /**
   * The unique identifier for the completion.
   */
  readonly id?: string | null | undefined
  /**
   * The name of the model that generated the response.
   */
  readonly model?: string | null | undefined
  /**
   * Array of reasons the model stopped generating tokens, corresponding to
   * each generation received.
   */
  readonly finishReasons?: ReadonlyArray<string> | null | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Telemetry.ts#L183)

Since v1.0.0