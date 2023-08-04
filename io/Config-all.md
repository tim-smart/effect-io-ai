# all

Constructs a config from a tuple / struct / arguments of configs.

To import and use `all` from the "Config" module:

```ts
import * as Config from '@effect/io/Config'

// Can be accessed like this
Config.all
```

**Signature**

```ts
export declare const all: <const Arg extends Iterable<Config<any>> | Record<string, Config<any>>>(
  arg: Arg
) => Config<
  [Arg] extends [readonly Config<any>[]]
    ? { -readonly [K in keyof Arg]: [Arg[K]] extends [Config<infer A>] ? A : never }
    : [Arg] extends [Iterable<Config<infer A>>]
    ? A[]
    : [Arg] extends [Record<string, Config<any>>]
    ? { -readonly [K in keyof Arg]: [Arg[K]] extends [Config<infer A>] ? A : never }
    : never
>
```
