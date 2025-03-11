## CommandInput

Configures the pipe that is established between the parent and child
processes' `stdin` stream.

Defaults to "pipe"

**Signature**

```ts
type CommandInput = "inherit" | "pipe" | Stream<Uint8Array, PlatformError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Command.ts#L72)

Since v1.0.0