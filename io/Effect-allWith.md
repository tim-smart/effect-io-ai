# allWith

Data-last variant of `Effect.all`.

Runs all the provided effects in sequence respecting the structure provided in input.

Supports multiple arguments, a single argument tuple / array or record / struct.

To import and use `allWith` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.allWith
```

**Signature**

```ts
export declare const allWith: <
  O extends {
    readonly concurrency?: Concurrency | undefined
    readonly batching?: boolean | 'inherit' | undefined
    readonly discard?: boolean | undefined
    readonly mode?: 'default' | 'validate' | 'either' | undefined
  }
>(
  options?: O | undefined
) => <const Arg extends Iterable<Effect<any, any, any>> | Record<string, Effect<any, any, any>>>(
  arg: Arg
) => All.Return<Arg, O>
```
