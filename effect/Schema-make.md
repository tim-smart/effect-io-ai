# make

Make a RPC service schema that can be encoded and decoded from JSON.

To import and use `make` from the "Schema" module:

```ts
import * as Schema from "@effect/rpc/Schema"
// Can be accessed like this
Schema.make
```

**Signature**

```ts
export declare const make: <S>(
  schema: S
) => RpcService.Simplify<RpcService.Validate<"Schema.Json", internal.Json, S, []>, never, never, never>
```
