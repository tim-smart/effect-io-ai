## Permissions

Wrapper on the Permission API (`navigator.permissions`)
with methods for querying status of permissions.

**Signature**

```ts
export interface Permissions {
  readonly [TypeId]: TypeId

  /**
   * Returns the state of a user permission on the global scope.
   */
  readonly query: <Name extends PermissionName>(
    name: Name
  ) => Effect.Effect<
    // `name` is identical to the name passed to Permissions.query
    // https://developer.mozilla.org/en-US/docs/Web/API/PermissionStatus
    Omit<PermissionStatus, "name"> & { name: Name },
    PermissionsError
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/Permissions.ts#L28)

Since v1.0.0