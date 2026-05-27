Package: `effect`<br />
Module: `Redis`<br />

## Redis.Script

Typed descriptor for a Redis Lua script.

**Details**

It defines the Lua source, parameter-to-argument mapping, Redis key count,
and result type used by `Redis.eval`.

**Signature**

```ts
export interface Script<
  Config extends {
    readonly params: ReadonlyArray<unknown>
    readonly result: unknown
  }
> {
  readonly [ScriptTypeId]: {
    readonly params: Config["params"]
    readonly result: Config["result"]
  }
  readonly lua: string
  readonly params: (...params: Config["params"]) => ReadonlyArray<unknown>
  readonly numberOfKeys: (...params: Config["params"]) => number

  /**
   * Set the return type of the script.
   */
  withReturnType<Result>(): Script<{
    params: Config["params"]
    result: Result
  }>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redis.ts#L142)

Since v4.0.0