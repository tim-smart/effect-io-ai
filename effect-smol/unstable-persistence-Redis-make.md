Package: `effect`<br />
Module: `Redis`<br />

## Redis.make

Creates a `Redis` service from a raw command sender.

**Details**

Lua scripts are loaded through `SCRIPT LOAD`, cached, and then invoked with
`EVALSHA`.

**Signature**

```ts
declare const make: (options: { readonly send: <A = unknown>(command: string, ...args: ReadonlyArray<string>) => Effect.Effect<A, RedisError>; }) => Effect.Effect<{ readonly send: <A = unknown>(command: string, ...args: ReadonlyArray<string>) => Effect.Effect<A, RedisError>; readonly eval: <Config extends { readonly params: ReadonlyArray<unknown>; readonly result: unknown; }>(script: Script<Config>) => (...params: Config["params"]) => Effect.Effect<Config["result"], RedisError>; }, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redis.ts#L56)

Since v4.0.0