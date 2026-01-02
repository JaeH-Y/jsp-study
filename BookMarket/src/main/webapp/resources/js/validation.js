/**
 * 
 * 
 */
function checkAddbook(e){
	const bookId = document.querySelector("#bookId").value;
	const name = document.querySelector("#name").value;
	const unitPrice = document.querySelector("#unitPrice").value;
	const unitsInStock = document.querySelector("#unitsInStock").value;
	const description = document.querySelector("#description").value;
	
	
	// Quiz
	// 도서아이디 체크
	// '[도서 코드]\nISBN과 숫자를 조합하여 8~15자까지 입력하세요.\n첫 글자는 반드시 ISBN으로 시작하세요.'
	// 정규 표현식 사용
	const regBookIdHeader = /^ISBN/;
	const regBookIdBody = /^ISBN[0-9]{4,11}$/;
	
	if (!regBookIdHeader.test(bookId)) {
	    alert("ISBN으로 시작해야 합니다.");
			e.preventDefault();
			return;
	}
	if (!regBookIdBody.test(bookId)) {
	    alert("ISBN 뒤에는 숫자 4~11자리를 입력하세요.");
			e.preventDefault();
			return;
	}
	
	// 도서명 체크
	// '[도서명]\n최소 4자에서 최대 50자까지 입력하세요.'
	
	// 정규식 적용 시
	// const regBookName = /^.{4,50}$/;
	// .: 모든 문자
	if (name.length < 4 || name.length > 50) {
	    alert("도서명은 최소 4자에서 최대 50자까지 입력할 수 있습니다.");
			e.preventDefault();
			return;
	}
	
	
	// 도서 가격 체크
	// '[가격]\n숫자만 입력하세요.'
	// '[가격]\n음수를 입력할 수 없습니다.'
	if (unitPrice ==='') {
    	alert("가격은 빈칸일 수 없습니다.");
			e.preventDefault();
			return;
	}
	if (isNaN(unitPrice)) {
    	alert("가격은 숫자만 입력 가능합니다.");
			e.preventDefault();
			return;
	}
	if(unitPrice < 0){
			alert("가격은 음수일 수 없습니다.")
			e.preventDefault();
			return;
	}
	
	// 소수점 이하 최대 2자리까지
	const regDoubleTwo = /^[0-9]+(\.[0-9]{1,2})?$/;
	const regDoubleTwo2 = /^\d+(\.\d{1,2})?$/;
	
	// 재고 수 체크
	// '[재고 수]\n숫자만 입력하세요.'
	if (unitsInStock ==='') {
    	alert("재고는 빈칸일 수 없습니다.");
			e.preventDefault();
			return;
	}
	if (isNaN(unitsInStock)) {
    	alert("재고는 숫자만 입력 가능합니다.");
			e.preventDefault();
			return;
		}
		if(unitsInStock < 0){
			alert("재고는 음수일 수 없습니다.")
			e.preventDefault();
			return;
		}
	
	// 상세설명 체크
	// '[상세설명]\n최소 100자 이상 입력하세요.'
	if(description.length < 100){
			alert("상세설명을 100자 이상 입력하세요")
			e.preventDefault();
			return;
	}
}