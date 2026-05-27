Package: `@effect/sql-libsql`<br />
Module: `LibsqlClient`<br />

## LibsqlClient.make

Creates a scoped libSQL SQL client with transaction support. When given connection options it creates and closes the SDK client; when given `liveClient`, the caller retains ownership.

**Signature**

```ts
declare const make: (options: LibsqlClientConfig) => Effect.Effect<LibsqlClient, never, Scope.Scope | Reactivity.Reactivity>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/libsql/src/LibsqlClient.ts#L205)

Since v4.0.0