! This file is part of Fortuno.
! Licensed under the BSD-2-Clause Plus Patent license.
! SPDX-License-Identifier: BSD-2-Clause-Patent

!> Contains a trivial implementation for a pure coarray suite
module fortuno_coarray_coapuresuite
  use fortuno, only : test_item
  use fortuno_coarray_coabasetypes, only : coa_pure_suite_base
  implicit none

  private
  public :: coa_pure_suite, coa_pure_suite_item


  !> Base type for all coarray suites
  type, extends(coa_pure_suite_base) :: coa_pure_suite
  end type coa_pure_suite

contains

  !> Returns a coarray suite instance wrapped as test_item
  function coa_pure_suite_item(name, items) result(testitem)
    character(*), intent(in) :: name
    type(test_item), intent(in) :: items(:)
    type(test_item), allocatable :: testitem

    allocate(testitem)
    testitem%item = coa_pure_suite(name=name, items=items)

  end function coa_pure_suite_item

end module fortuno_coarray_coapuresuite
