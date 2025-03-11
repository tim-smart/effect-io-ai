# all

Runs all the provided effects in sequence respecting the structure provided in input.

Supports multiple arguments, a single argument tuple / array or record / struct.

To import and use `all` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.all
```

**Signature**

```ts
export declare const all: <
  const Arg extends Iterable<Micro<any, any, any>> | Record<string, Micro<any, any, any>>,
  O extends NoExcessProperties<
    { readonly concurrency?: Concurrency | undefined; readonly discard?: boolean | undefined },
    O
  >
>(
  arg: Arg,
  options?: O
) => All.Return<Arg, O>
```
