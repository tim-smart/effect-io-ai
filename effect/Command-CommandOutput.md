## CommandOutput

Configures the pipes that are established between the parent and child
processes `stderr` and `stdout` streams.

Defaults to "pipe"

**Signature**

```ts
type CommandOutput = "inherit" | "pipe" | Sink<Uint8Array, Uint8Array>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Command.ts#L83)

Since v1.0.0