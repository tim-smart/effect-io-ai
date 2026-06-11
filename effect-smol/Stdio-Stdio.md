Package: `effect`<br />
Module: `Stdio`<br />

## Stdio.Stdio

Defines the service interface for process standard I/O.

**When to use**

Use to depend on command-line arguments and standard I/O through the Effect
environment.

**Details**

The service provides command-line arguments, sinks for standard output and
standard error, and a stream of standard input bytes. I/O operations can fail
with `PlatformError`.

**Signature**

```ts
export interface Stdio {
  readonly [TypeId]: TypeId
  readonly args: Effect.Effect<ReadonlyArray<string>>
  stdout(options?: {
    readonly endOnDone?: boolean | undefined
  }): Sink.Sink<void, string | Uint8Array, never, PlatformError>
  stderr(options?: {
    readonly endOnDone?: boolean | undefined
  }): Sink.Sink<void, string | Uint8Array, never, PlatformError>
  readonly stdin: Stream.Stream<Uint8Array, PlatformError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stdio.ts#L63)

Since v4.0.0