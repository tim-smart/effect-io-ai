# ULID

Represents a Universally Unique Lexicographically Sortable Identifier (ULID).

ULIDs are designed to be compact, URL-safe, and ordered, making them suitable for use as identifiers.
This schema ensures that the provided string adheres to the standard ULID format.

To import and use `ULID` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.ULID
```

**Signature**

```ts
export declare const ULID: Schema<string, string>
```
