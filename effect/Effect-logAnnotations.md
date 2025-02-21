# logAnnotations

Retrieves the current log annotations for the current scope.

**Details**

This function provides access to the log annotations associated with the
current scope. Log annotations are key-value pairs that provide additional
context to log entries. They are often used to add metadata such as tags,
identifiers, or extra debugging information to logs.

By using this function, you can inspect or utilize the annotations applied to
the current scope, making it easier to trace and debug specific sections of
your application.

To import and use `logAnnotations` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.logAnnotations
```

**Signature**

```ts
export declare const logAnnotations: Effect<HashMap.HashMap<string, unknown>, never, never>
```
