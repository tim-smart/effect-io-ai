# ValidDateFromSelf

Represents a schema for handling only **valid** dates. For example, `new Date("Invalid Date")` is rejected, even though it is an instance of `Date`.

To import and use `ValidDateFromSelf` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.ValidDateFromSelf
```

**Signature**

```ts
export declare const ValidDateFromSelf: ValidDateFromSelf
```
