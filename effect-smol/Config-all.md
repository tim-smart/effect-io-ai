Package: `effect`<br />
Module: `Config`<br />

## Config.all

Combines multiple configs into a single config that parses all of them.

When to use:
- Grouping related configs into a tuple or named struct.

Accepts a tuple (preserves positions), an iterable, or a record of configs.
Returns a config whose parsed value mirrors the input shape.

**Example** (Combining configs as a struct)

```ts
import { Config, ConfigProvider, Effect } from "effect"

const dbConfig = Config.all({
  host: Config.string("host"),
  port: Config.number("port")
})

const provider = ConfigProvider.fromUnknown({ host: "localhost", port: 5432 })
// Effect.runSync(dbConfig.parse(provider))
// { host: "localhost", port: 5432 }
```

**Signature**

```ts
declare const all: <const Arg extends Iterable<Config<any>> | Record<string, Config<any>>>(arg: Arg) => Config<[Arg] extends [ReadonlyArray<Config<any>>] ? { -readonly [K in keyof Arg]: [Arg[K]] extends [Config<infer A>] ? A : never; } : [Arg] extends [Iterable<Config<infer A>>] ? Array<A> : [Arg] extends [Record<string, Config<any>>] ? { -readonly [K in keyof Arg]: [Arg[K]] extends [Config<infer A>] ? A : never; } : never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L347)

Since v4.0.0