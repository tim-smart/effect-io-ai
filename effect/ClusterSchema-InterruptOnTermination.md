Package: `@effect/cluster`<br />
Module: `ClusterSchema`<br />

## ClusterSchema.InterruptOnTermination

Interrupts the request as soon as entity termination starts, instead of
waiting for `entityTerminationTimeout`. Defaults to `false`.

Use for long-lived requests that never finish on their own. Persisted
requests resume on the next owner without saving the interrupt as a reply.
Non-persisted requests receive an interrupt exit. Server-side
`Uninterruptible` takes precedence.

**Signature**

```ts
declare class InterruptOnTermination
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/ClusterSchema.ts#L53)

Since v1.0.0