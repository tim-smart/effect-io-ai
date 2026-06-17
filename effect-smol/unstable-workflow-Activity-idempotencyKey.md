Package: `effect`<br />
Module: `Activity`<br />

## Activity.idempotencyKey

Computes a deterministic activity idempotency key from the current workflow
execution ID, the supplied name, and optionally the current attempt.

**Signature**

```ts
declare const idempotencyKey: (name: string, options?: { readonly includeAttempt?: boolean | undefined; } | undefined) => Effect.Effect<string, never, WorkflowInstance>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Activity.ts#L245)

Since v4.0.0