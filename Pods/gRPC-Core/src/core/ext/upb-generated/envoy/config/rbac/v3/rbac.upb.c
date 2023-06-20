/* This file was generated by upbc (the upb compiler) from the input
 * file:
 *
 *     envoy/config/rbac/v3/rbac.proto
 *
 * Do not edit -- your changes will be discarded when the file is
 * regenerated. */

#include <stddef.h>
#include "upb/msg_internal.h"
#include "envoy/config/rbac/v3/rbac.upb.h"
#include "envoy/config/core/v3/address.upb.h"
#include "envoy/config/core/v3/extension.upb.h"
#include "envoy/config/route/v3/route_components.upb.h"
#include "envoy/type/matcher/v3/metadata.upb.h"
#include "envoy/type/matcher/v3/path.upb.h"
#include "envoy/type/matcher/v3/string.upb.h"
#include "envoy/type/v3/range.upb.h"
#include "google/api/expr/v1alpha1/checked.upb.h"
#include "google/api/expr/v1alpha1/syntax.upb.h"
#include "envoy/annotations/deprecation.upb.h"
#include "udpa/annotations/migrate.upb.h"
#include "udpa/annotations/status.upb.h"
#include "udpa/annotations/versioning.upb.h"
#include "validate/validate.upb.h"

#include "upb/port_def.inc"

static const upb_msglayout_sub envoy_config_rbac_v3_RBAC_submsgs[1] = {
  {.submsg = &envoy_config_rbac_v3_RBAC_PoliciesEntry_msginit},
};

static const upb_msglayout_field envoy_config_rbac_v3_RBAC__fields[2] = {
  {1, UPB_SIZE(0, 0), 0, 0, 14, _UPB_MODE_SCALAR | (_UPB_REP_4BYTE << _UPB_REP_SHIFT)},
  {2, UPB_SIZE(4, 8), 0, 0, 11, _UPB_MODE_MAP | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
};

const upb_msglayout envoy_config_rbac_v3_RBAC_msginit = {
  &envoy_config_rbac_v3_RBAC_submsgs[0],
  &envoy_config_rbac_v3_RBAC__fields[0],
  UPB_SIZE(8, 16), 2, _UPB_MSGEXT_NONE, 2, 255,
};

static const upb_msglayout_sub envoy_config_rbac_v3_RBAC_PoliciesEntry_submsgs[1] = {
  {.submsg = &envoy_config_rbac_v3_Policy_msginit},
};

static const upb_msglayout_field envoy_config_rbac_v3_RBAC_PoliciesEntry__fields[2] = {
  {1, UPB_SIZE(0, 0), 0, 0, 9, _UPB_MODE_SCALAR | (_UPB_REP_STRVIEW << _UPB_REP_SHIFT)},
  {2, UPB_SIZE(8, 16), 0, 0, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
};

const upb_msglayout envoy_config_rbac_v3_RBAC_PoliciesEntry_msginit = {
  &envoy_config_rbac_v3_RBAC_PoliciesEntry_submsgs[0],
  &envoy_config_rbac_v3_RBAC_PoliciesEntry__fields[0],
  UPB_SIZE(16, 32), 2, _UPB_MSGEXT_NONE, 2, 255,
};

static const upb_msglayout_sub envoy_config_rbac_v3_Policy_submsgs[4] = {
  {.submsg = &envoy_config_rbac_v3_Permission_msginit},
  {.submsg = &envoy_config_rbac_v3_Principal_msginit},
  {.submsg = &google_api_expr_v1alpha1_CheckedExpr_msginit},
  {.submsg = &google_api_expr_v1alpha1_Expr_msginit},
};

static const upb_msglayout_field envoy_config_rbac_v3_Policy__fields[4] = {
  {1, UPB_SIZE(12, 24), 0, 0, 11, _UPB_MODE_ARRAY | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {2, UPB_SIZE(16, 32), 0, 1, 11, _UPB_MODE_ARRAY | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {3, UPB_SIZE(4, 8), 1, 3, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {4, UPB_SIZE(8, 16), 2, 2, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
};

const upb_msglayout envoy_config_rbac_v3_Policy_msginit = {
  &envoy_config_rbac_v3_Policy_submsgs[0],
  &envoy_config_rbac_v3_Policy__fields[0],
  UPB_SIZE(24, 40), 4, _UPB_MSGEXT_NONE, 4, 255,
};

static const upb_msglayout_sub envoy_config_rbac_v3_Permission_submsgs[9] = {
  {.submsg = &envoy_config_core_v3_CidrRange_msginit},
  {.submsg = &envoy_config_core_v3_TypedExtensionConfig_msginit},
  {.submsg = &envoy_config_rbac_v3_Permission_msginit},
  {.submsg = &envoy_config_rbac_v3_Permission_Set_msginit},
  {.submsg = &envoy_config_route_v3_HeaderMatcher_msginit},
  {.submsg = &envoy_type_matcher_v3_MetadataMatcher_msginit},
  {.submsg = &envoy_type_matcher_v3_PathMatcher_msginit},
  {.submsg = &envoy_type_matcher_v3_StringMatcher_msginit},
  {.submsg = &envoy_type_v3_Int32Range_msginit},
};

static const upb_msglayout_field envoy_config_rbac_v3_Permission__fields[12] = {
  {1, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 3, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {2, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 3, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {3, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 0, 8, _UPB_MODE_SCALAR | (_UPB_REP_1BYTE << _UPB_REP_SHIFT)},
  {4, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 4, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {5, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 0, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {6, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 0, 13, _UPB_MODE_SCALAR | (_UPB_REP_4BYTE << _UPB_REP_SHIFT)},
  {7, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 5, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {8, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 2, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {9, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 7, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {10, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 6, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {11, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 8, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {12, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 1, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
};

const upb_msglayout envoy_config_rbac_v3_Permission_msginit = {
  &envoy_config_rbac_v3_Permission_submsgs[0],
  &envoy_config_rbac_v3_Permission__fields[0],
  UPB_SIZE(8, 16), 12, _UPB_MSGEXT_NONE, 12, 255,
};

static const upb_msglayout_sub envoy_config_rbac_v3_Permission_Set_submsgs[1] = {
  {.submsg = &envoy_config_rbac_v3_Permission_msginit},
};

static const upb_msglayout_field envoy_config_rbac_v3_Permission_Set__fields[1] = {
  {1, UPB_SIZE(0, 0), 0, 0, 11, _UPB_MODE_ARRAY | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
};

const upb_msglayout envoy_config_rbac_v3_Permission_Set_msginit = {
  &envoy_config_rbac_v3_Permission_Set_submsgs[0],
  &envoy_config_rbac_v3_Permission_Set__fields[0],
  UPB_SIZE(8, 8), 1, _UPB_MSGEXT_NONE, 1, 255,
};

static const upb_msglayout_sub envoy_config_rbac_v3_Principal_submsgs[7] = {
  {.submsg = &envoy_config_core_v3_CidrRange_msginit},
  {.submsg = &envoy_config_rbac_v3_Principal_msginit},
  {.submsg = &envoy_config_rbac_v3_Principal_Authenticated_msginit},
  {.submsg = &envoy_config_rbac_v3_Principal_Set_msginit},
  {.submsg = &envoy_config_route_v3_HeaderMatcher_msginit},
  {.submsg = &envoy_type_matcher_v3_MetadataMatcher_msginit},
  {.submsg = &envoy_type_matcher_v3_PathMatcher_msginit},
};

static const upb_msglayout_field envoy_config_rbac_v3_Principal__fields[11] = {
  {1, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 3, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {2, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 3, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {3, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 0, 8, _UPB_MODE_SCALAR | (_UPB_REP_1BYTE << _UPB_REP_SHIFT)},
  {4, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 2, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {5, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 0, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {6, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 4, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {7, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 5, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {8, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 1, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {9, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 6, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {10, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 0, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  {11, UPB_SIZE(0, 0), UPB_SIZE(-5, -9), 0, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
};

const upb_msglayout envoy_config_rbac_v3_Principal_msginit = {
  &envoy_config_rbac_v3_Principal_submsgs[0],
  &envoy_config_rbac_v3_Principal__fields[0],
  UPB_SIZE(8, 16), 11, _UPB_MSGEXT_NONE, 11, 255,
};

static const upb_msglayout_sub envoy_config_rbac_v3_Principal_Set_submsgs[1] = {
  {.submsg = &envoy_config_rbac_v3_Principal_msginit},
};

static const upb_msglayout_field envoy_config_rbac_v3_Principal_Set__fields[1] = {
  {1, UPB_SIZE(0, 0), 0, 0, 11, _UPB_MODE_ARRAY | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
};

const upb_msglayout envoy_config_rbac_v3_Principal_Set_msginit = {
  &envoy_config_rbac_v3_Principal_Set_submsgs[0],
  &envoy_config_rbac_v3_Principal_Set__fields[0],
  UPB_SIZE(8, 8), 1, _UPB_MSGEXT_NONE, 1, 255,
};

static const upb_msglayout_sub envoy_config_rbac_v3_Principal_Authenticated_submsgs[1] = {
  {.submsg = &envoy_type_matcher_v3_StringMatcher_msginit},
};

static const upb_msglayout_field envoy_config_rbac_v3_Principal_Authenticated__fields[1] = {
  {2, UPB_SIZE(4, 8), 1, 0, 11, _UPB_MODE_SCALAR | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
};

const upb_msglayout envoy_config_rbac_v3_Principal_Authenticated_msginit = {
  &envoy_config_rbac_v3_Principal_Authenticated_submsgs[0],
  &envoy_config_rbac_v3_Principal_Authenticated__fields[0],
  UPB_SIZE(8, 16), 1, _UPB_MSGEXT_NONE, 0, 255,
};

static const upb_msglayout *messages_layout[8] = {
  &envoy_config_rbac_v3_RBAC_msginit,
  &envoy_config_rbac_v3_RBAC_PoliciesEntry_msginit,
  &envoy_config_rbac_v3_Policy_msginit,
  &envoy_config_rbac_v3_Permission_msginit,
  &envoy_config_rbac_v3_Permission_Set_msginit,
  &envoy_config_rbac_v3_Principal_msginit,
  &envoy_config_rbac_v3_Principal_Set_msginit,
  &envoy_config_rbac_v3_Principal_Authenticated_msginit,
};

const upb_msglayout_file envoy_config_rbac_v3_rbac_proto_upb_file_layout = {
  messages_layout,
  NULL,
  8,
  0,
};

#include "upb/port_undef.inc"

