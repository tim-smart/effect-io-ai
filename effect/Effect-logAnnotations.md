Package: `effect`<br />
Module: `Effect`<br />

## Effect.logAnnotations

Retrieves the current log annotations for the current scope.

**Details**

This function provides access to the log annotations associated with the
current scope. Log annotations are key-value pairs that provide additional
context to log entries. They are often used to add metadata such as tags,
identifiers, or extra debugging information to logs.

By using this function, you can inspect or utilize the annotations applied to
the current scope, making it easier to trace and debug specific sections of
your application.

**See**

- `annotateLogs` to add custom annotations to log entries generated within an effect.
- `annotateLogsScoped` to add log annotations with a limited scope.

**Signature**

```ts
declare const logAnnotations: Effect<HashMap.HashMap<string, unknown>, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L10945)

Since v2.0.0