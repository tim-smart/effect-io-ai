Package: `@effect/platform-bun`<br />
Module: `BunTerminal`<br />

## BunTerminal.make

Creates a scoped `Terminal` service backed by process stdin/stdout, using the
optional predicate to decide when key input should end the input stream.

**Signature**

```ts
declare const make: (shouldQuit?: (input: UserInput) => boolean) => Effect<Terminal, never, Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunTerminal.ts#L49)

Since v4.0.0