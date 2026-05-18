Package: `@effect/platform-node-shared`<br />
Module: `NodeTerminal`<br />

## NodeTerminal.make

Creates a scoped process-backed `Terminal` using Node `readline`, enabling
TTY raw mode while in scope and using the supplied predicate to decide when
key input should end.

**Signature**

```ts
declare const make: (shouldQuit?: (input: Terminal.UserInput) => boolean) => Effect.Effect<Terminal.Terminal, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeTerminal.ts#L41)

Since v4.0.0